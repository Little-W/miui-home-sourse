.class public abstract Lcom/market/sdk/utils/VersionConstraint;
.super Ljava/lang/Object;
.source "VersionConstraint.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcom/market/sdk/utils/VersionConstraint;
    .locals 1

    .line 18
    new-instance v0, Lcom/market/sdk/utils/VersionConstraint$1;

    invoke-direct {v0, p0, p1}, Lcom/market/sdk/utils/VersionConstraint$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract isAfter()Z
.end method
