.class public abstract Lcom/google/firebase/installations/remote/InstallationResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/remote/InstallationResponse$Builder;,
        Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/firebase/installations/remote/InstallationResponse$Builder;
    .locals 1

    new-instance v0, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse$Builder;

    invoke-direct {v0}, Lcom/google/firebase/installations/remote/AutoValue_InstallationResponse$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getAuthToken()Lcom/google/firebase/installations/remote/TokenResult;
.end method

.method public abstract getFid()Ljava/lang/String;
.end method

.method public abstract getRefreshToken()Ljava/lang/String;
.end method

.method public abstract getResponseCode()Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;
.end method

.method public abstract getUri()Ljava/lang/String;
.end method
