.class public final synthetic Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$LEXMYLlsowks9jU3-CnvzlbAePE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$LEXMYLlsowks9jU3-CnvzlbAePE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$LEXMYLlsowks9jU3-CnvzlbAePE;

    invoke-direct {v0}, Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$LEXMYLlsowks9jU3-CnvzlbAePE;-><init>()V

    sput-object v0, Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$LEXMYLlsowks9jU3-CnvzlbAePE;->INSTANCE:Lcom/miui/home/recents/util/-$$Lambda$RemoteAnimationTargetSet$LEXMYLlsowks9jU3-CnvzlbAePE;

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

    check-cast p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-static {p1}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->lambda$new$2(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    return p0
.end method
