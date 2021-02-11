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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLongTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mLongTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract getOnClickListener()Landroid/view/View$OnClickListener;
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getShortTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mShortTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public isEquals(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mComponentName:Landroid/content/ComponentName;

    .line 78
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mUserHandle:Landroid/os/UserHandle;

    .line 79
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isValid()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mShortTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLongTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mLongTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setShortTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mShortTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setUserHandle(Landroid/os/UserHandle;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method
