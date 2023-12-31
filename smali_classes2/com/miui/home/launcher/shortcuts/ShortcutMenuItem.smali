.class public abstract Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;
.super Ljava/lang/Object;
.source "ShortcutMenuItem.java"


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mLongTitle:Ljava/lang/CharSequence;

.field private mShortTitle:Ljava/lang/CharSequence;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getLongTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mLongTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public abstract getOnClickListener()Landroid/view/View$OnClickListener;
.end method

.method public getPackage()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mComponentName:Landroid/content/ComponentName;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getShortTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mShortTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public isEquals(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mComponentName:Landroid/content/ComponentName;

    .line 79
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mUserHandle:Landroid/os/UserHandle;

    .line 80
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValid()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mShortTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLongTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mLongTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setShortTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mShortTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setUserHandle(Landroid/os/UserHandle;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method
