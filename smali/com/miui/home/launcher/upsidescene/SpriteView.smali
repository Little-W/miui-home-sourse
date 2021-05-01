.class public Lcom/miui/home/launcher/upsidescene/SpriteView;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "SpriteView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/SpriteView$UpsideFolderInfo;
    }
.end annotation


# static fields
.field private static final BIGGER_OFFSET:F

.field private static final SHAKE_OFFSET:I

.field private static sCellHeight:I

.field static sHighlightAllAlphaAnimator:Landroid/animation/ValueAnimator;

.field static sHighlightCurrentValue:F


# instance fields
.field private mContent:Landroid/view/View;

.field private mHighlightOffsetRandom:F

.field private mIsHighlight:Z

.field private mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

.field private mSpriteData:Lcom/miui/home/launcher/upsidescene/data/Sprite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    .line 67
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/upsidescene/SpriteView;->SHAKE_OFFSET:I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 68
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/miui/home/launcher/upsidescene/SpriteView;->BIGGER_OFFSET:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 71
    sput v0, Lcom/miui/home/launcher/upsidescene/SpriteView;->sHighlightCurrentValue:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/view/View;)V
    .locals 2

    .line 83
    invoke-direct {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mHighlightOffsetRandom:F

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070283

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/miui/home/launcher/upsidescene/SpriteView;->sCellHeight:I

    .line 86
    iput-object p2, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    .line 87
    iput-object p3, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 88
    invoke-direct {p0, p4}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static createContentView(Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 397
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getAppearance()Lcom/miui/home/launcher/upsidescene/data/Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Appearance;->getType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 454
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown appearance type:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getAppearance()Lcom/miui/home/launcher/upsidescene/data/Appearance;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Appearance;->getType()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 412
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/SpriteView;->createFreeButton(Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    goto/16 :goto_0

    .line 399
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getAppearance()Lcom/miui/home/launcher/upsidescene/data/Appearance;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/upsidescene/data/Appearance$StageImageAppearance;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Appearance$StageImageAppearance;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    .line 403
    :cond_0
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 404
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {v0, p2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    .line 405
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 406
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 407
    move-object p0, p1

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object p0, p1

    goto/16 :goto_0

    .line 416
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 449
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown function type:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 433
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/SpriteView;->createToggle(Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 445
    :pswitch_4
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;

    invoke-static {p0, p2}, Lcom/miui/home/launcher/upsidescene/SpriteView;->createMtzGadget(Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 437
    :pswitch_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/SpriteView;->createWidget(Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 441
    :pswitch_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/SpriteView;->createSystemGadget(Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 429
    :pswitch_7
    new-instance v0, Lcom/miui/home/launcher/upsidescene/FreeButton;

    invoke-direct {v0, p2, p0, p1}, Lcom/miui/home/launcher/upsidescene/FreeButton;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    move-object p0, v0

    goto :goto_0

    .line 425
    :pswitch_8
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;

    invoke-static {p0, v0, p1, p2}, Lcom/miui/home/launcher/upsidescene/SpriteView;->createFolder(Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 421
    :pswitch_9
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/SpriteView;->createShortcut(Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/content/Context;)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_a
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static createFolder(Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 284
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;->getType()I

    .line 285
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 286
    new-instance v1, Lcom/miui/home/launcher/upsidescene/SpriteView$UpsideFolderInfo;

    invoke-direct {v1, p0, p2}, Lcom/miui/home/launcher/upsidescene/SpriteView$UpsideFolderInfo;-><init>(Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 287
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;->getFolderName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p3}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 288
    invoke-virtual {v1, p3}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 289
    invoke-virtual {p2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f10010d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p3}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 291
    :cond_0
    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/upsidescene/data/Function$FolderFunction;->getComponentNames(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 292
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 293
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 294
    invoke-virtual {v0, v2, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 298
    :cond_1
    new-instance v2, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v2, p3, p1, v3}, Lcom/miui/home/launcher/ShortcutInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V

    .line 299
    invoke-virtual {p2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    goto :goto_0

    :cond_2
    const p0, 0x7f0d0042

    .line 302
    invoke-virtual {p2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p0, p1, p3, v1}, Lcom/miui/home/launcher/FolderIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p0

    .line 304
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 305
    new-instance p1, Lcom/miui/home/launcher/upsidescene/SpriteView$1;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/upsidescene/SpriteView$1;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method private static createFreeButton(Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 215
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getAppearance()Lcom/miui/home/launcher/upsidescene/data/Appearance;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;

    .line 216
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;->getFreeButtonInfo()Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 219
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;->getFreeButtonInfo()Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->isMamlGadget()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    new-instance v1, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;

    .line 221
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;->getFreeButtonInfo()Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->getMamlContext()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, p2, v3, p0, p1}, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    .line 222
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Appearance$FreeButtonAppearance;->getFreeButtonInfo()Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/FreeButtonInfo;->getFile()Lmiui/util/FileAccessable;

    move-result-object p0

    invoke-interface {p0}, Lmiui/util/FileAccessable;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v2

    .line 225
    :cond_1
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->onAdded()V

    .line 226
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->onCreate()V

    .line 227
    invoke-virtual {v1}, Lcom/miui/home/launcher/gadget/FreeButtonAwesomeGadget;->onStart()V

    return-object v1

    .line 230
    :cond_2
    new-instance v0, Lcom/miui/home/launcher/upsidescene/FreeButton;

    invoke-direct {v0, p2, p0, p1}, Lcom/miui/home/launcher/upsidescene/FreeButton;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    return-object v0
.end method

.method private static createMtzGadget(Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;Landroid/content/Context;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    .line 353
    :try_start_0
    sget-object v1, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;->getMtzRelativePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/util/FileAccessable$Factory;->create(Ljava/lang/String;Ljava/lang/String;)Lmiui/util/FileAccessable;

    move-result-object v1

    .line 354
    invoke-interface {v1}, Lmiui/util/FileAccessable;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    .line 361
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/gadget/AwesomeGadget;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/gadget/AwesomeGadget;-><init>(Landroid/content/Context;)V

    .line 362
    sget-object p1, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializer;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$MtzGadgetFunction;->getMtzRelativePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/gadget/AwesomeGadget;->initConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/AwesomeGadget;->onAdded()V

    .line 364
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/AwesomeGadget;->onCreate()V

    .line 365
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/AwesomeGadget;->onStart()V

    return-object v0

    :catch_0
    move-exception p0

    .line 358
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method private static createShortcut(Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 235
    new-instance v0, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/ShortcutInfo;-><init>()V

    .line 236
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 237
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/high16 v3, 0x10200000

    .line 236
    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/home/launcher/ShortcutInfo;->setActivity(Landroid/content/ComponentName;ILandroid/os/UserHandle;)V

    .line 238
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 239
    iget-object v2, v0, Lcom/miui/home/launcher/ShortcutInfo;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 243
    :cond_0
    invoke-virtual {v2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/miui/home/launcher/ShortcutInfo;->setTitleAndUpdateDB(Ljava/lang/CharSequence;Landroid/content/Context;)V

    const p2, 0x7f0d0026

    .line 246
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    .line 245
    invoke-static {p2, v1, v3, v0}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p2

    .line 247
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;->isShowIcon()Z

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$AppFunction;->isShowTitle()Z

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconTitleVisible(ZZ)V

    return-object p2
.end method

.method private static createSystemGadget(Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 332
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->getGadgetId()I

    move-result p2

    invoke-static {p2}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->getId()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p2, Lcom/miui/home/launcher/gadget/GadgetInfo;->id:J

    .line 337
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/miui/home/launcher/gadget/GadgetFactory;->createGadget(Landroid/content/Context;Lcom/miui/home/launcher/gadget/GadgetInfo;)Lcom/miui/home/launcher/gadget/Gadget;

    move-result-object p1

    .line 338
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 339
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/Gadget;->onAdded()V

    .line 340
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    .line 341
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->getResourcePath()Ljava/lang/String;

    move-result-object p0

    .line 342
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 343
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "RESPONSE_PICKED_RESOURCE"

    .line 344
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/gadget/Gadget;->updateConfig(Landroid/os/Bundle;)V

    .line 347
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    return-object p1
.end method

.method private static createToggle(Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 254
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;->getToggleId()I

    move-result p2

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return-object v0

    :cond_0
    const p2, 0x7f0d0026

    .line 258
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;->getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v2

    .line 257
    invoke-static {p2, v1, v0, v2}, Lcom/miui/home/launcher/ShortcutIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/ShortcutInfo;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p2

    .line 259
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;->isShowIcon()Z

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$ToggleFunction;->isShowTitle()Z

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setIconTitleVisible(ZZ)V

    return-object p2
.end method

.method private static createWidget(Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 314
    invoke-static {p2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;->getId()I

    move-result v1

    if-gtz v1, :cond_0

    .line 317
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 318
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;->getProviderComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/miui/home/launcher/common/WidgetManagerUtils;->bindAppWidgetIdIfAllowed(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    .line 319
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;->setId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 321
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    .line 325
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 326
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;->getId()I

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p1

    .line 327
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;->getId()I

    move-result p0

    invoke-virtual {p1, p0, v0}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    return-object p1
.end method

.method private destroyHighlight()V
    .locals 1

    .line 565
    sget-object v0, Lcom/miui/home/launcher/upsidescene/SpriteView;->sHighlightAllAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    const/4 v0, 0x0

    .line 567
    sput-object v0, Lcom/miui/home/launcher/upsidescene/SpriteView;->sHighlightAllAlphaAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private enterHighlight()V
    .locals 4

    .line 497
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isInHighlight()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 501
    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mIsHighlight:Z

    .line 502
    sget-object v1, Lcom/miui/home/launcher/upsidescene/SpriteView;->sHighlightAllAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 503
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    sput-object v1, Lcom/miui/home/launcher/upsidescene/SpriteView;->sHighlightAllAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 504
    sget-object v1, Lcom/miui/home/launcher/upsidescene/SpriteView;->sHighlightAllAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 505
    sget-object v1, Lcom/miui/home/launcher/upsidescene/SpriteView;->sHighlightAllAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 506
    sget-object v1, Lcom/miui/home/launcher/upsidescene/SpriteView;->sHighlightAllAlphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 507
    sget-object v1, Lcom/miui/home/launcher/upsidescene/SpriteView;->sHighlightAllAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 508
    sget-object v0, Lcom/miui/home/launcher/upsidescene/SpriteView;->sHighlightAllAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/upsidescene/SpriteView$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/upsidescene/SpriteView$2;-><init>(Lcom/miui/home/launcher/upsidescene/SpriteView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 513
    sget-object v0, Lcom/miui/home/launcher/upsidescene/SpriteView;->sHighlightAllAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 515
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/upsidescene/SpriteView;->sHighlightAllAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x40800000    # 4.0f
    .end array-data
.end method

.method private enterTranslucent()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private exitHighlight()V
    .locals 2

    .line 540
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isInHighlight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    sget-object v0, Lcom/miui/home/launcher/upsidescene/SpriteView;->sHighlightAllAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 544
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setAlpha(F)V

    const/4 v1, 0x0

    .line 545
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setTranslationY(F)V

    .line 546
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setScaleX(F)V

    .line 547
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setScaleY(F)V

    const/4 v0, 0x0

    .line 548
    iput-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mIsHighlight:Z

    :cond_1
    return-void
.end method

.method private exitTranslucent()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private isInHighlight()Z
    .locals 1

    .line 553
    iget-boolean v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mIsHighlight:Z

    return v0
.end method

.method private refreshGadgetEditMode()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v1, :cond_1

    .line 208
    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    .line 209
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onEditDisable()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setContentView(Landroid/view/View;)V
    .locals 1

    .line 465
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    .line 467
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->removeAllViews()V

    .line 468
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->addView(Landroid/view/View;II)V

    .line 470
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getRotation()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    .line 471
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getRotation()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setRotation(F)V

    .line 473
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getScaleX()F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 474
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getScaleX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setScaleX(F)V

    .line 476
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getScaleY()F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    .line 477
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getScaleY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setScaleY(F)V

    .line 480
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    instance-of v0, p1, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_3

    .line 481
    check-cast p1, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {p1}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    .line 484
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->refreshGadgetEditMode()V

    return-void
.end method


# virtual methods
.method public exitEditMode()V
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isEditable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setClickable(Z)V

    const/4 v0, 0x1

    .line 183
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setState(I)V

    .line 184
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->destroyHighlight()V

    .line 185
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->refreshGadgetEditMode()V

    .line 186
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->invalidate()V

    return-void
.end method

.method public exitMoveMode()V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setClickable(Z)V

    .line 195
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->destroyHighlight()V

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getParentLayout()Lcom/miui/home/launcher/upsidescene/FreeLayout;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/FreeLayout;

    return-object v0
.end method

.method public getSpriteData()Lcom/miui/home/launcher/upsidescene/data/Sprite;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    return-object v0
.end method

.method public gotoEditMode()V
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isEditable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isEditable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setClickable(Z)V

    const/4 v0, 0x2

    .line 172
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setState(I)V

    .line 173
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->refreshGadgetEditMode()V

    .line 174
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->invalidate()V

    return-void
.end method

.method public gotoMoveMode()V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isEditable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setClickable(Z)V

    return-void
.end method

.method public isEditable()Z
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getAppearance()Lcom/miui/home/launcher/upsidescene/data/Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Appearance;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMovable()Z
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isEditable()Z

    move-result v0

    return v0
.end method

.method public moveTo(II)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->setLocation(II)V

    .line 490
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;

    .line 491
    iput p1, v0, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;->left:I

    .line 492
    iput p2, v0, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;->top:I

    .line 493
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->requestLayout()V

    return-void
.end method

.method public notifyGadget(I)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContent:Landroid/view/View;

    instance-of v1, v0, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v1, :cond_0

    .line 117
    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 158
    :pswitch_0
    instance-of p1, v0, Lcom/miui/home/launcher/gadget/AwesomeGadget;

    if-eqz p1, :cond_0

    .line 159
    check-cast v0, Lcom/miui/home/launcher/gadget/AwesomeGadget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/AwesomeGadget;->cleanUpAndKeepResource()V

    goto :goto_0

    .line 152
    :pswitch_1
    instance-of p1, v0, Lcom/miui/home/launcher/gadget/AwesomeGadget;

    if-eqz p1, :cond_0

    .line 153
    check-cast v0, Lcom/miui/home/launcher/gadget/AwesomeGadget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/AwesomeGadget;->reinit()V

    goto :goto_0

    .line 148
    :pswitch_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onEditNormal()V

    goto :goto_0

    .line 144
    :pswitch_3
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onEditDisable()V

    goto :goto_0

    .line 140
    :pswitch_4
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDestroy()V

    goto :goto_0

    .line 136
    :pswitch_5
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onCreate()V

    goto :goto_0

    .line 124
    :pswitch_6
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onResume()V

    goto :goto_0

    .line 120
    :pswitch_7
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onPause()V

    goto :goto_0

    .line 132
    :pswitch_8
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onStop()V

    goto :goto_0

    .line 128
    :pswitch_9
    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onStart()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 520
    iget p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mHighlightOffsetRandom:F

    sget v0, Lcom/miui/home/launcher/upsidescene/SpriteView;->sHighlightCurrentValue:F

    add-float/2addr p1, v0

    const/high16 v0, 0x40800000    # 4.0f

    rem-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    const/high16 v3, 0x40000000    # 2.0f

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v2, p1, v3

    if-gtz v2, :cond_1

    sub-float p1, v3, p1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    sub-float p1, v3, p1

    goto :goto_0

    :cond_2
    cmpg-float v2, p1, v0

    if-gtz v2, :cond_3

    sub-float/2addr p1, v0

    .line 530
    :cond_3
    :goto_0
    sget v0, Lcom/miui/home/launcher/upsidescene/SpriteView;->BIGGER_OFFSET:F

    neg-float v2, p1

    add-float/2addr v2, v1

    mul-float/2addr v0, v2

    div-float/2addr v0, v3

    .line 531
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 532
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 534
    sget v0, Lcom/miui/home/launcher/upsidescene/SpriteView;->SHAKE_OFFSET:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setTranslationY(F)V

    .line 535
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setScaleX(F)V

    .line 536
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setScaleY(F)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 371
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isEditable()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 372
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 373
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 374
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getEditFocusedSprite()Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object p1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    return v1

    .line 378
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInMoveMode()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getAppearance()Lcom/miui/home/launcher/upsidescene/data/Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Appearance;->getType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    .line 106
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    .line 108
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    .line 109
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 110
    :cond_0
    sget p2, Lcom/miui/home/launcher/upsidescene/SpriteView;->sCellHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 112
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;->onMeasure(II)V

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 388
    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getEditFocusedSprite()Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->setEditFocusedSprite(Lcom/miui/home/launcher/upsidescene/SpriteView;)V

    const/4 v0, 0x1

    return v0

    .line 392
    :cond_0
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherFrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public rebuildContentView()V
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSpriteData:Lcom/miui/home/launcher/upsidescene/data/Sprite;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SpriteView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/SpriteView;->createContentView(Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 461
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 572
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->exitHighlight()V

    .line 573
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->exitTranslucent()V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 601
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isMovable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 602
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->enterHighlight()V

    goto :goto_0

    .line 595
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isMovable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 596
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->enterHighlight()V

    goto :goto_0

    .line 589
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isEditable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 590
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->enterTranslucent()V

    goto :goto_0

    .line 580
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->isEditable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 581
    invoke-direct {p0}, Lcom/miui/home/launcher/upsidescene/SpriteView;->enterHighlight()V

    :cond_0
    :goto_0
    :pswitch_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
