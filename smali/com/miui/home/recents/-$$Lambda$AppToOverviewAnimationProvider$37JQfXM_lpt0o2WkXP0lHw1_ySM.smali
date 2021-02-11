.class public final synthetic Lcom/miui/home/recents/-$$Lambda$AppToOverviewAnimationProvider$37JQfXM_lpt0o2WkXP0lHw1_ySM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/recents/-$$Lambda$AppToOverviewAnimationProvider$37JQfXM_lpt0o2WkXP0lHw1_ySM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$AppToOverviewAnimationProvider$37JQfXM_lpt0o2WkXP0lHw1_ySM;

    invoke-direct {v0}, Lcom/miui/home/recents/-$$Lambda$AppToOverviewAnimationProvider$37JQfXM_lpt0o2WkXP0lHw1_ySM;-><init>()V

    sput-object v0, Lcom/miui/home/recents/-$$Lambda$AppToOverviewAnimationProvider$37JQfXM_lpt0o2WkXP0lHw1_ySM;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$AppToOverviewAnimationProvider$37JQfXM_lpt0o2WkXP0lHw1_ySM;

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
