.class public Lcom/miui/home/launcher/view/HomeFeedContainer;
.super Landroid/widget/FrameLayout;
.source "HomeFeedContainer.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent2;


# static fields
.field private static final ACTION_REMOVE_NEWHOME:Ljava/lang/String; = "miui.newhome.action.REMOVE_NEWHOME"

.field public static final ANIM_ACTIVITY_OPEN_ENTER:I = 0x7f010012

.field public static final ANIM_ACTIVITY_OPEN_EXIT:I = 0x7f010013

.field public static final ANIM_VIDEO_ACTIVITY_ENTER:I = 0x7f010014

.field public static final ANIM_VIDEO_ACTIVITY_EXIT:I = 0x7f010015

.field private static final CLASS_NEWHOME_PATH:Ljava/lang/String; = "com.miui.newhome.view.gestureview.NewHomeView"

.field private static final KEY_ANIM_LAST_SHOW_TIME:Ljava/lang/String; = "key_anim_last_show_time"

.field public static final KEY_BACK_HOME_TIMES:Ljava/lang/String; = "key_back_home_times"

.field private static final KEY_CTA_SHOW:Ljava/lang/String; = "key_cta_show"

.field public static final KEY_LAST_RECORD_EXPOSE_TIME:Ljava/lang/String; = "key_last_record_expose_time"

.field private static final KEY_NEWHOME_SHOW:Ljava/lang/String; = "is_show_newhome"

.field public static final KEY_UPGLIDE_CLOSECTA_REMIND_COUNT:Ljava/lang/String; = "key_upglide_closecta_remind_count"

.field public static final KEY_UPGLIDE_CLOSECTA_SHOW_COUNT:Ljava/lang/String; = "key_upglide_closecta_show_count"

.field public static final KEY_UPGLIDE_INTERVAL:Ljava/lang/String; = "key_upglide_interval"

.field public static final KEY_UPGLIDE_OPENCTA_REMIND_COUNT:Ljava/lang/String; = "key_upglide_opencta_remind_count"

.field public static final KEY_UPGLIDE_OPENCTA_SHOW_COUNT:Ljava/lang/String; = "key_upglide_opencta_show_count"

.field public static final KEY_UPGLIDE_SUPPORT_UPGLIDE_REMIND:Ljava/lang/String; = "key_upglide_support_upglide_remind"

.field public static final PACKAGE_NAME_NEWHOME:Ljava/lang/String; = "com.miui.newhome"

.field private static final PREF_FORMAT:Ljava/lang/String; = "com.miui.newhome.preferences.%s"

.field public static final STYLES_THEME_PHOTOS:I = 0x7f120352

.field private static final TAG:Ljava/lang/String; = "HomeFeedContainer"

.field private static final TIME_ONE_HOUR_MILLIS:J = 0x36ee80L


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFeedSwipeController:Lcom/miui/home/launcher/touch/FeedSwipeController;

.field private mHomeFeedAllowView:Lcom/miui/home/launcher/view/HomeFeedArrowView;

.field private volatile mIsCanShowAnim:Z

.field private mIsNestScroll:Z

.field private mIsNestedFling:Z

.field private mIsStartInit:Z

.field private mLastDyconsumed:I

.field private mLastShowTime:J

.field private mNestFlingVelocityY:F

.field private final mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

.field private mPerformAppToHomeMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 88
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mPerformAppToHomeMethod:Ljava/lang/reflect/Method;

    .line 89
    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance p2, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p2, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    const/4 p2, 0x0

    .line 205
    iput-object p2, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mPerformAppToHomeMethod:Ljava/lang/reflect/Method;

    .line 94
    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance p2, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p2, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    const/4 p2, 0x0

    .line 205
    iput-object p2, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mPerformAppToHomeMethod:Ljava/lang/reflect/Method;

    .line 99
    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/view/HomeFeedContainer;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->isShowAnimVersion2()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/view/HomeFeedContainer;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mIsCanShowAnim:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/view/HomeFeedContainer;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/view/HomeFeedContainer;)J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mLastShowTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/miui/home/launcher/view/HomeFeedContainer;J)J
    .locals 0

    .line 48
    iput-wide p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mLastShowTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/view/HomeFeedContainer;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->addAllowView()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/view/HomeFeedContainer;)Lcom/miui/home/launcher/view/HomeFeedArrowView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mHomeFeedAllowView:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    return-object p0
.end method

.method private addAllowView()V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mHomeFeedAllowView:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mHomeFeedAllowView:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    .line 306
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mHomeFeedAllowView:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    new-instance v1, Lcom/miui/home/launcher/view/HomeFeedContainer$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/view/HomeFeedContainer$3;-><init>(Lcom/miui/home/launcher/view/HomeFeedContainer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->setAlphaUpdateListener(Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mHomeFeedAllowView:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 344
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x51

    .line 347
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 348
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->getArrowViewBottomMargin()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 349
    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mHomeFeedAllowView:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mHomeFeedAllowView:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 352
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->getArrowViewBottomMargin()I

    move-result v1

    .line 353
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v2, v1, :cond_2

    .line 354
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 355
    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mHomeFeedAllowView:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private dealHomeFeedApkChanged(Ljava/lang/String;)V
    .locals 6

    const-string v0, "com.miui.newhome"

    .line 546
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->judgeNewVersionBeyondRunningVersion()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 548
    :try_start_0
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 549
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "forceStopPackage"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 550
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 551
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "com.miui.home"

    aput-object v2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "HomeFeedContainer"

    const-string v1, "Exception"

    .line 553
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private getArrowViewBottomMargin()I
    .locals 4

    .line 361
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 362
    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    .line 363
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getWorkspaceIndicatorMarginBottom()I

    move-result v2

    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->getParentHeight()I

    move-result v3

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v3, v1

    add-int/2addr v2, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1a

    return v2
.end method

.method private getParentHeight()I
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 370
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCanShowAnim(Z)Z
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    .line 232
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 233
    sget-object p1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mFeedSwipeController:Lcom/miui/home/launcher/touch/FeedSwipeController;

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->isLauncherNormalState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isShowAnimVersion2()Z
    .locals 10

    .line 240
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->setLastRecrdExposeTime()V

    .line 246
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "key_cta_show"

    .line 248
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const-string v4, "key_upglide_support_upglide_remind"

    .line 250
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v4, :cond_6

    const-string v4, "key_upglide_interval"

    .line 254
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 253
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v6, "key_last_record_expose_time"

    .line 255
    invoke-virtual {p0, v6}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static {v0, v6, v7, v8}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const v6, 0x5265c00

    mul-int/2addr v4, v6

    int-to-long v6, v4

    cmp-long v4, v8, v6

    if-lez v4, :cond_5

    const-string v4, "key_back_home_times"

    .line 257
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v4, v3

    const/4 v6, 0x5

    if-ge v4, v6, :cond_3

    const-string v2, "key_back_home_times"

    .line 260
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    const-string v2, "key_upglide_opencta_remind_count"

    .line 264
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v4, "key_upglide_opencta_show_count"

    .line 266
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ge v4, v2, :cond_6

    const-string v1, "key_upglide_opencta_show_count"

    .line 269
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v4, v3

    .line 268
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v3

    goto :goto_2

    :cond_4
    const-string v2, "key_upglide_closecta_remind_count"

    .line 274
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v4, "key_upglide_closecta_show_count"

    .line 276
    invoke-virtual {p0, v4}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 275
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ge v4, v2, :cond_6

    const-string v1, "key_upglide_closecta_show_count"

    .line 279
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v4, v3

    .line 278
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v3

    goto :goto_2

    :cond_5
    const-string v2, "key_back_home_times"

    .line 287
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    :goto_2
    return v1
.end method

.method private judgeNewVersionBeyondRunningVersion()Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.miui.home.feed.HomeApplication"

    .line 561
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getIsNewVBeyondRunningV"

    const/4 v3, 0x0

    .line 562
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 563
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 564
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "HomeFeedContainer"

    const-string v3, "Exception"

    .line 566
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method static synthetic lambda$createNewHomeView$0(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method private onStartNestScroll(Lcom/miui/home/launcher/touch/FeedSwipeController;)V
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mIsStartInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 450
    iput-boolean v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mIsStartInit:Z

    .line 451
    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onStartNestScroll()V

    :cond_0
    return-void
.end method

.method private sendNewHomeEnableBroadcast(Z)V
    .locals 2

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.newhome.action.REMOVE_NEWHOME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "is_show_newhome"

    .line 416
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.miui.newhome"

    .line 417
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setLastRecrdExposeTime()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_last_record_expose_time"

    .line 295
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 294
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 298
    iget-object v2, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_last_record_expose_time"

    .line 299
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public autoShowHideFeed(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mFeedSwipeController:Lcom/miui/home/launcher/touch/FeedSwipeController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->isMiniusOneScreenShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mFeedSwipeController:Lcom/miui/home/launcher/touch/FeedSwipeController;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/touch/FeedSwipeController;->autoShowHideFeed(ZZ)V

    :cond_0
    return-void
.end method

.method public cancelArrowAnim(Z)V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mHomeFeedAllowView:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mHomeFeedAllowView:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->cancelAnimRemoveView(Z)V

    :cond_0
    return-void
.end method

.method public createNewHomeView(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/touch/FeedTransController;)V
    .locals 2

    .line 391
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->loadView(Lcom/miui/home/launcher/touch/FeedSwipeController;)Lcom/miui/newhome/view/gestureview/NewHomeView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    const-string p1, "HomeFeedContainer"

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slideUpIsContentCenter true  NewHome mNewHomeView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    if-eqz p1, :cond_0

    .line 394
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/touch/FeedTransController;->setupViews(Lcom/miui/newhome/view/gestureview/NewHomeView;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 395
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/touch/FeedTransController;->setProgress(F)V

    .line 396
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    sget-object p2, Lcom/miui/home/launcher/view/-$$Lambda$HomeFeedContainer$TD_pcK57XHBBuhuSPYh1Uz4pG6s;->INSTANCE:Lcom/miui/home/launcher/view/-$$Lambda$HomeFeedContainer$TD_pcK57XHBBuhuSPYh1Uz4pG6s;

    invoke-virtual {p1, p2}, Lcom/miui/newhome/view/gestureview/NewHomeView;->setFeedActionListener(Lcom/miui/newhome/view/gestureview/FeedActionListener;)V

    .line 399
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->setLastRecrdExposeTime()V

    const/4 p1, 0x1

    .line 400
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->sendNewHomeEnableBroadcast(Z)V

    :cond_0
    return-void
.end method

.method public formatKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "com.miui.newhome.preferences.%s"

    const/4 v1, 0x1

    .line 163
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNewHomeView()Lcom/miui/newhome/view/gestureview/NewHomeView;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    return-object v0
.end method

.method public initHomeFeedApplication(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    const-string v0, "com.miui.home.feed.HomeApplication"

    .line 104
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "init"

    const/4 v2, 0x1

    .line 105
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 107
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "HomeFeedContainer"

    const-string v1, "Exception"

    .line 109
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public isExistNewHomeView()Z
    .locals 1

    .line 387
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadView(Lcom/miui/home/launcher/touch/FeedSwipeController;)Lcom/miui/newhome/view/gestureview/NewHomeView;
    .locals 6

    .line 144
    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mFeedSwipeController:Lcom/miui/home/launcher/touch/FeedSwipeController;

    .line 145
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->removeAllViews()V

    const/4 p1, 0x0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->initHomeFeedApplication(Landroid/content/Context;)V

    const-string v0, "HomeFeedContainer"

    const-string v1, "loadView start"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.miui.newhome.view.gestureview.NewHomeView"

    .line 149
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    .line 150
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/util/AttributeSet;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 151
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/newhome/view/gestureview/NewHomeView;

    const/4 v1, 0x4

    .line 152
    invoke-virtual {v0, v1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->setVisibility(I)V

    .line 153
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 154
    invoke-virtual {p0, v0, v4, v1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "HomeFeedContainer"

    const-string v2, "Exception"

    .line 157
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 115
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 116
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 121
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 122
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageAddMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 133
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageAddMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->dealHomeFeedApkChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageChangedMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 127
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageChangedMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->dealHomeFeedApkChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 139
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->dealHomeFeedApkChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 486
    iput-boolean v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mIsNestedFling:Z

    neg-float v0, p3

    .line 487
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNestFlingVelocityY:F

    .line 489
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 517
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/view/HomeFeedContainer;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 0

    .line 522
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mFeedSwipeController:Lcom/miui/home/launcher/touch/FeedSwipeController;

    if-eqz p1, :cond_1

    .line 523
    iget p2, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mLastDyconsumed:I

    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 524
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->onStartNestScroll(Lcom/miui/home/launcher/touch/FeedSwipeController;)V

    const/4 p1, 0x1

    .line 525
    iput-boolean p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mIsNestScroll:Z

    .line 526
    iget p2, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mLastDyconsumed:I

    const/4 p5, 0x0

    if-le p2, p3, :cond_0

    sub-int/2addr p2, p3

    .line 527
    iput p2, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mLastDyconsumed:I

    .line 528
    aget p2, p4, p1

    add-int/2addr p2, p3

    aput p2, p4, p1

    goto :goto_0

    .line 530
    :cond_0
    aget p3, p4, p1

    add-int/2addr p3, p2

    aput p3, p4, p1

    .line 531
    iput p5, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mLastDyconsumed:I

    .line 533
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mFeedSwipeController:Lcom/miui/home/launcher/touch/FeedSwipeController;

    iget p2, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mLastDyconsumed:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onNestScrolling(F)Z

    .line 534
    iget p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mLastDyconsumed:I

    if-nez p1, :cond_1

    iput-boolean p5, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mIsNestScroll:Z

    :cond_1
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 500
    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/view/HomeFeedContainer;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    .line 505
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mFeedSwipeController:Lcom/miui/home/launcher/touch/FeedSwipeController;

    if-eqz p1, :cond_0

    if-gez p5, :cond_0

    .line 507
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->onStartNestScroll(Lcom/miui/home/launcher/touch/FeedSwipeController;)V

    const/4 p1, 0x1

    .line 508
    iput-boolean p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mIsNestScroll:Z

    .line 509
    iget p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mLastDyconsumed:I

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mLastDyconsumed:I

    .line 510
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mFeedSwipeController:Lcom/miui/home/launcher/touch/FeedSwipeController;

    iget p2, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mLastDyconsumed:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onNestScrolling(F)Z

    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 457
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 463
    iget-object p4, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {p4, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public onNewHomeTransProgress(FF)V
    .locals 1

    .line 578
    invoke-direct {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->addAllowView()V

    .line 579
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mHomeFeedAllowView:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/view/HomeFeedArrowView;->onNewHomeTransProgress(FF)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 427
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 2

    .line 432
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 433
    invoke-static {}, Lcom/miui/newhome/view/gestureview/NewHomeView;->getNewHomeState()Lcom/miui/newhome/view/gestureview/NewHomeState;

    move-result-object p1

    sget-object v1, Lcom/miui/newhome/view/gestureview/NewHomeState;->SHOW:Lcom/miui/newhome/view/gestureview/NewHomeState;

    if-ne p1, v1, :cond_0

    if-nez p4, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 437
    iput-boolean v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mIsNestScroll:Z

    .line 438
    iput-boolean v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mIsNestedFling:Z

    .line 439
    iput v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mLastDyconsumed:I

    .line 440
    iput-boolean v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mIsStartInit:Z

    .line 441
    iget-object p3, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mFeedSwipeController:Lcom/miui/home/launcher/touch/FeedSwipeController;

    if-eqz p3, :cond_1

    .line 442
    invoke-virtual {p3, p2}, Lcom/miui/home/launcher/touch/FeedSwipeController;->setStartNestedScroll(Z)V

    :cond_1
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1

    .line 473
    iget-object p2, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mFeedSwipeController:Lcom/miui/home/launcher/touch/FeedSwipeController;

    if-eqz p2, :cond_1

    .line 474
    iget-object p2, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {p2, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 475
    iget-boolean p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mIsNestedFling:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mIsNestScroll:Z

    if-eqz p1, :cond_0

    .line 476
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mFeedSwipeController:Lcom/miui/home/launcher/touch/FeedSwipeController;

    iget p2, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNestFlingVelocityY:F

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onStopNestScroll(FZ)V

    goto :goto_0

    .line 478
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mFeedSwipeController:Lcom/miui/home/launcher/touch/FeedSwipeController;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/launcher/touch/FeedSwipeController;->onStopNestScroll(FZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 168
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 169
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->isCanShowAnim(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mIsCanShowAnim:Z

    .line 170
    iget-boolean p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mIsCanShowAnim:Z

    if-eqz p1, :cond_0

    .line 171
    new-instance p1, Lcom/miui/home/launcher/view/HomeFeedContainer$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/view/HomeFeedContainer$1;-><init>(Lcom/miui/home/launcher/view/HomeFeedContainer;)V

    new-instance v0, Lcom/miui/home/launcher/view/HomeFeedContainer$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/view/HomeFeedContainer$2;-><init>(Lcom/miui/home/launcher/view/HomeFeedContainer;)V

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public performAppToHome()V
    .locals 6

    .line 208
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 210
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isBackNewHome()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToStateBack(Lcom/miui/home/launcher/LauncherState;)V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    if-eqz v0, :cond_3

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mPerformAppToHomeMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 220
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "performAppToHome"

    .line 221
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mPerformAppToHomeMethod:Ljava/lang/reflect/Method;

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mPerformAppToHomeMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mPerformAppToHomeMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "performAppToHome"

    const-string v1, " reflect error"

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public removeContainerView()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0, v1}, Lcom/miui/newhome/view/gestureview/NewHomeView;->setFeedActionListener(Lcom/miui/newhome/view/gestureview/FeedActionListener;)V

    .line 378
    iput-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mHomeFeedAllowView:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    if-eqz v0, :cond_1

    .line 381
    iput-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mHomeFeedAllowView:Lcom/miui/home/launcher/view/HomeFeedArrowView;

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->removeAllViews()V

    return-void
.end method

.method public removeNewHomeView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/touch/FeedTransController;)V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer;->mNewHomeView:Lcom/miui/newhome/view/gestureview/NewHomeView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/newhome/view/gestureview/NewHomeView;->getNewHomeState()Lcom/miui/newhome/view/gestureview/NewHomeState;

    move-result-object v0

    sget-object v2, Lcom/miui/newhome/view/gestureview/NewHomeState;->SHOW:Lcom/miui/newhome/view/gestureview/NewHomeState;

    if-ne v0, v2, :cond_0

    .line 406
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->removeContainerView()V

    const/4 p1, 0x0

    .line 409
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/touch/FeedTransController;->setupViews(Lcom/miui/newhome/view/gestureview/NewHomeView;)V

    .line 410
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->sendNewHomeEnableBroadcast(Z)V

    const-string p1, "HomeFeedContainer"

    const-string p2, "slideUpIsContentCenter false NewHome remove feed view"

    .line 411
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
