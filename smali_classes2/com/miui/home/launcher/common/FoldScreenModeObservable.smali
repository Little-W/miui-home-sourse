.class public final Lcom/miui/home/launcher/common/FoldScreenModeObservable;
.super Ljava/util/Observable;
.source "FoldScreenModeObservable.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/common/FoldScreenModeObservable;

.field private static mCurrentScreenMode:Lcom/miui/home/launcher/common/ScreenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lcom/miui/home/launcher/common/FoldScreenModeObservable;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/FoldScreenModeObservable;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->INSTANCE:Lcom/miui/home/launcher/common/FoldScreenModeObservable;

    .line 12
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const-string v2, "Application.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->obtainCurrentScreenMode(Z)Lcom/miui/home/launcher/common/ScreenMode;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->mCurrentScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCurrentScreenMode()Lcom/miui/home/launcher/common/ScreenMode;
    .locals 1

    .line 24
    sget-object v0, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->mCurrentScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    return-object v0
.end method

.method public final obtainCurrentScreenMode(Z)Lcom/miui/home/launcher/common/ScreenMode;
    .locals 0

    if-eqz p1, :cond_0

    .line 28
    sget-object p1, Lcom/miui/home/launcher/common/ScreenMode;->LARGE_SCREEN:Lcom/miui/home/launcher/common/ScreenMode;

    goto :goto_0

    .line 30
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/common/ScreenMode;->NORMAL:Lcom/miui/home/launcher/common/ScreenMode;

    :goto_0
    return-object p1
.end method

.method public final screenModeUpdate(Z)V
    .locals 1

    .line 15
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->obtainCurrentScreenMode(Z)Lcom/miui/home/launcher/common/ScreenMode;

    move-result-object p1

    .line 16
    sget-object v0, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->mCurrentScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    if-eq p1, v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->setChanged()V

    .line 18
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->notifyObservers()V

    .line 19
    sput-object p1, Lcom/miui/home/launcher/common/FoldScreenModeObservable;->mCurrentScreenMode:Lcom/miui/home/launcher/common/ScreenMode;

    :cond_0
    return-void
.end method
