.class public final synthetic Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$0bub88lylGz3NVYP8A6roghSu_s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$0bub88lylGz3NVYP8A6roghSu_s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$0bub88lylGz3NVYP8A6roghSu_s;

    invoke-direct {v0}, Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$0bub88lylGz3NVYP8A6roghSu_s;-><init>()V

    sput-object v0, Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$0bub88lylGz3NVYP8A6roghSu_s;->INSTANCE:Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$0bub88lylGz3NVYP8A6roghSu_s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->lambda$new$1(I)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p0

    return-object p0
.end method
