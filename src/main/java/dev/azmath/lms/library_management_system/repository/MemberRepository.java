package dev.azmath.lms.library_management_system.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import dev.azmath.lms.library_management_system.model.Member;

@RepositoryRestResource(collectionResourceRel = "members", path = "members")
public interface MemberRepository extends JpaRepository<Member, Long> {
}

