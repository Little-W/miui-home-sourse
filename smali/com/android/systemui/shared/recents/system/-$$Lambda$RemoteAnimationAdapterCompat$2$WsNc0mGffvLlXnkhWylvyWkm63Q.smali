.class public final synthetic Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationAdapterCompat$2$WsNc0mGffvLlXnkhWylvyWkm63Q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationAdapterCompat$2$WsNc0mGffvLlXnkhWylvyWkm63Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationAdapterCompat$2$WsNc0mGffvLlXnkhWylvyWkm63Q;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationAdapterCompat$2$WsNc0mGffvLlXnkhWylvyWkm63Q;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationAdapterCompat$2$WsNc0mGffvLlXnkhWylvyWkm63Q;->INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$RemoteAnimationAdapterCompat$2$WsNc0mGffvLlXnkhWylvyWkm63Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/window/TransitionInfo$Change;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2;->lambda$WsNc0mGffvLlXnkhWylvyWkm63Q(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    return p0
.end method
