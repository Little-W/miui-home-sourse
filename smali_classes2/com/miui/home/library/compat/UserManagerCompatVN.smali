.class Lcom/miui/home/library/compat/UserManagerCompatVN;
.super Lcom/miui/home/library/compat/UserManagerCompatVL;
.source "UserManagerCompatVN.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/miui/home/library/compat/UserManagerCompatVL;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/miui/home/library/compat/UserManagerCompatVN;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public isUserUnlocked(Landroid/os/UserHandle;)Z
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/home/library/compat/UserManagerCompatVN;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method
