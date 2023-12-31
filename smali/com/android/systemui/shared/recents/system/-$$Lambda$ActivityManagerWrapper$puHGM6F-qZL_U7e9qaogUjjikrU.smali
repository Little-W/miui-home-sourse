.class public final synthetic Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$puHGM6F-qZL_U7e9qaogUjjikrU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$puHGM6F-qZL_U7e9qaogUjjikrU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$puHGM6F-qZL_U7e9qaogUjjikrU;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$puHGM6F-qZL_U7e9qaogUjjikrU;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$puHGM6F-qZL_U7e9qaogUjjikrU;->INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$puHGM6F-qZL_U7e9qaogUjjikrU;

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

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->lambda$onGoingToRecentsLegacy$1(I)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method
