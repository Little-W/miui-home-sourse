.class public final synthetic Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$BV01s44kf38fvPt4XqQnwzP_M_Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$BV01s44kf38fvPt4XqQnwzP_M_Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$BV01s44kf38fvPt4XqQnwzP_M_Q;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$BV01s44kf38fvPt4XqQnwzP_M_Q;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$BV01s44kf38fvPt4XqQnwzP_M_Q;->INSTANCE:Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$BV01s44kf38fvPt4XqQnwzP_M_Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->lambda$BV01s44kf38fvPt4XqQnwzP_M_Q(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method
