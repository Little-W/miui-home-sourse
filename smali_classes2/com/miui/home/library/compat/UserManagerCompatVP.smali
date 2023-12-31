.class public Lcom/miui/home/library/compat/UserManagerCompatVP;
.super Lcom/miui/home/library/compat/UserManagerCompatVN;
.source "UserManagerCompatVP.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/miui/home/library/compat/UserManagerCompatVN;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic enableAndResetCache()V
    .locals 0

    .line 24
    invoke-super {p0}, Lcom/miui/home/library/compat/UserManagerCompatVN;->enableAndResetCache()V

    return-void
.end method

.method public bridge synthetic getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/miui/home/library/compat/UserManagerCompatVN;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic getUserForSerialNumber(J)Landroid/os/UserHandle;
    .locals 0

    .line 24
    invoke-super {p0, p1, p2}, Lcom/miui/home/library/compat/UserManagerCompatVN;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUserForUserId(I)Landroid/os/UserHandle;
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/miui/home/library/compat/UserManagerCompatVN;->getUserForUserId(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUserProfiles()Ljava/util/List;
    .locals 0

    .line 24
    invoke-super {p0}, Lcom/miui/home/library/compat/UserManagerCompatVN;->getUserProfiles()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/miui/home/library/compat/UserManagerCompatVN;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isUserUnlocked(Landroid/os/UserHandle;)Z
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/miui/home/library/compat/UserManagerCompatVN;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public requestQuietModeEnabled(Landroid/content/Context;ZLandroid/os/UserHandle;)Z
    .locals 0

    const-string p0, "user"

    .line 32
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 33
    invoke-virtual {p0, p2, p3}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method
