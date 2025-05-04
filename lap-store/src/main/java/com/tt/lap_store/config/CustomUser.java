package com.tt.lap_store.config;

import com.tt.lap_store.Model.UserDtls;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Arrays;
import java.util.Collection;

public class CustomUser implements UserDetails {

	private UserDtls user;

	public CustomUser(UserDtls user) {
		super();
		this.user = user;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		if (user.getRole() == "ROLE_ADMIN" || user.getRole() == "ROLE_USER") {
			return Arrays.asList(new SimpleGrantedAuthority(user.getRole()));
		} else if (user.getRole() == "ADMIN" || user.getRole() == "USER") {
			return Arrays.asList(new SimpleGrantedAuthority("ROLE_" + user.getRole()));
		}
		return Arrays.asList(new SimpleGrantedAuthority(user.getRole()));
	}

	@Override
	public String getPassword() {
		return user.getPassword();
	}

	@Override
	public String getUsername() {
		return user.getEmail();
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return Boolean.TRUE.equals(user.getAccountNonLocked());
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return user.getIsEnable();
	}

}
