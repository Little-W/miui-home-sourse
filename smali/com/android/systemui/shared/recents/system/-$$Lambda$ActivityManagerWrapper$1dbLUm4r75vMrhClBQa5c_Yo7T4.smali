.class public final synthetic Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$1dbLUm4r75vMrhClBQa5c_Yo7T4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$1dbLUm4r75vMrhClBQa5c_Yo7T4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$1dbLUm4r75vMrhClBQa5c_Yo7T4;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$1dbLUm4r75vMrhClBQa5c_Yo7T4;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$1dbLUm4r75vMrhClBQa5c_Yo7T4;->INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$1dbLUm4r75vMrhClBQa5c_Yo7T4;

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

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->lambda$onGoingToRecentsLegacy$0(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    return p0
.end method
