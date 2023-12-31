.class public final synthetic Lcom/miui/home/recents/-$$Lambda$AppToOverviewAnimationProvider$IbXHvUFhsgr77DJpx1pG8xmyPWE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/recents/-$$Lambda$AppToOverviewAnimationProvider$IbXHvUFhsgr77DJpx1pG8xmyPWE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$AppToOverviewAnimationProvider$IbXHvUFhsgr77DJpx1pG8xmyPWE;

    invoke-direct {v0}, Lcom/miui/home/recents/-$$Lambda$AppToOverviewAnimationProvider$IbXHvUFhsgr77DJpx1pG8xmyPWE;-><init>()V

    sput-object v0, Lcom/miui/home/recents/-$$Lambda$AppToOverviewAnimationProvider$IbXHvUFhsgr77DJpx1pG8xmyPWE;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$AppToOverviewAnimationProvider$IbXHvUFhsgr77DJpx1pG8xmyPWE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    invoke-static {p1}, Lcom/miui/home/recents/AppToOverviewAnimationProvider;->lambda$onActivityReady$0(Lcom/miui/home/launcher/anim/AnimatorPlaybackController;)V

    return-void
.end method
