.class public Lcom/miui/home/launcher/allapps/AppInfoComparator;
.super Ljava/lang/Object;
.source "AppInfoComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/home/launcher/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLabelComparator:Lcom/miui/home/launcher/util/LabelComparator;

.field private final mMyUser:Landroid/os/UserHandle;

.field private final mUserManager:Lcom/miui/home/library/compat/UserManagerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AppInfoComparator;->mUserManager:Lcom/miui/home/library/compat/UserManagerCompat;

    .line 39
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AppInfoComparator;->mMyUser:Landroid/os/UserHandle;

    .line 40
    new-instance p1, Lcom/miui/home/launcher/util/LabelComparator;

    invoke-direct {p1}, Lcom/miui/home/launcher/util/LabelComparator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AppInfoComparator;->mLabelComparator:Lcom/miui/home/launcher/util/LabelComparator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/AppInfo;)I
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AppInfoComparator;->mLabelComparator:Lcom/miui/home/launcher/util/LabelComparator;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/util/LabelComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 52
    :cond_0
    iget-object v0, p1, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v1, p2, Lcom/miui/home/launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AppInfoComparator;->mMyUser:Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, -0x1

    return p0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AppInfoComparator;->mUserManager:Lcom/miui/home/library/compat/UserManagerCompat;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 61
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AppInfoComparator;->mUserManager:Lcom/miui/home/library/compat/UserManagerCompat;

    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/library/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AppInfoComparator;->compare(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/AppInfo;)I

    move-result p0

    return p0
.end method
