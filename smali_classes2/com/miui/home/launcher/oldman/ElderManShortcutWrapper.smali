.class public Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;
.super Ljava/lang/Object;
.source "ElderManShortcutWrapper.java"

# interfaces
.implements Lcom/miui/home/launcher/oldman/ElderlyManShortcut;


# instance fields
.field private mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method

.method private getColorizedPortraitDrawable(Lcom/miui/home/launcher/Launcher;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->getOrRequestContactColorizedPortraitNum(Lcom/miui/home/launcher/Launcher;)I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->getPortraitDrawableRes(I)I

    move-result p0

    .line 68
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getContactColorizedPortraitNum()I
    .locals 2

    .line 30
    iget-object p0, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v0, "contact_default_portrait_num"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getOrRequestContactColorizedPortraitNum(Lcom/miui/home/launcher/Launcher;)I
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->getContactColorizedPortraitNum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getContactsColorizedPortraitController()Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->requestOnePortraitNum()I

    move-result v0

    .line 75
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->setContactColorizedPortraitNum(I)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getContactsColorizedPortraitController()Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->usePortraitNum(I)V

    .line 79
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "use colorized num="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ElderlyMan"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic lambda$getIconAsync$1(Ljava/util/function/Consumer;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 62
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private setContactColorizedPortraitNum(I)V
    .locals 1

    .line 26
    iget-object p0, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v0, "contact_default_portrait_num"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public canAcceptByHotSeats()Z
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->isContactShortcut()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getIconAsync(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/miui/home/launcher/oldman/-$$Lambda$ElderManShortcutWrapper$nhpJL5tqILB5PsLbEjrnL8Vaa5Q;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/oldman/-$$Lambda$ElderManShortcutWrapper$nhpJL5tqILB5PsLbEjrnL8Vaa5Q;-><init>(Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;)V

    new-instance p0, Lcom/miui/home/launcher/oldman/-$$Lambda$ElderManShortcutWrapper$yvvjoLGmSlv7aFNrmxEgjH0sdWk;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/oldman/-$$Lambda$ElderManShortcutWrapper$yvvjoLGmSlv7aFNrmxEgjH0sdWk;-><init>(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public isUseContactColorizedPortrait()Z
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutInfo;->isContactShortcut()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v0, "is_default_head"

    .line 40
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public synthetic lambda$getIconAsync$0$ElderManShortcutWrapper(Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->getColorizedPortraitDrawable(Lcom/miui/home/launcher/Launcher;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public onRemovedFromLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->releaseColorizedPortraitNum(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public releaseColorizedPortraitNum(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->isUseContactColorizedPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getContactsColorizedPortraitController()Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->getContactColorizedPortraitNum()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/oldman/ContactsColorizedPortraitController;->releasePortraitNum(I)V

    :cond_0
    return-void
.end method

.method public setIsElderlyManShortcut(Z)V
    .locals 1

    .line 45
    iget-object p0, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v0, "is_elderly_man_shortcut"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public setUseContactColorizedPortrait(Z)V
    .locals 1

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/oldman/ElderManShortcutWrapper;->mShortcutInfo:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const-string v0, "is_default_head"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method
