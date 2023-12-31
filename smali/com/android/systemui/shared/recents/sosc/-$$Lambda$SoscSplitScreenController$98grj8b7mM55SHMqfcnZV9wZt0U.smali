.class public final synthetic Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$98grj8b7mM55SHMqfcnZV9wZt0U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$98grj8b7mM55SHMqfcnZV9wZt0U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$98grj8b7mM55SHMqfcnZV9wZt0U;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$98grj8b7mM55SHMqfcnZV9wZt0U;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$98grj8b7mM55SHMqfcnZV9wZt0U;->INSTANCE:Lcom/android/systemui/shared/recents/sosc/-$$Lambda$SoscSplitScreenController$98grj8b7mM55SHMqfcnZV9wZt0U;

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

    invoke-static {p1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->lambda$onStartingSplitLegacy$2(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    return p0
.end method
