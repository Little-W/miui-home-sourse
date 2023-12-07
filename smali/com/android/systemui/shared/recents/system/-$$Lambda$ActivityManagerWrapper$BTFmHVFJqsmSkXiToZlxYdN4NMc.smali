.class public final synthetic Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$BTFmHVFJqsmSkXiToZlxYdN4NMc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$BTFmHVFJqsmSkXiToZlxYdN4NMc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$BTFmHVFJqsmSkXiToZlxYdN4NMc;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$BTFmHVFJqsmSkXiToZlxYdN4NMc;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$BTFmHVFJqsmSkXiToZlxYdN4NMc;->INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$BTFmHVFJqsmSkXiToZlxYdN4NMc;

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

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->lambda$onStartingSplitLegacy$2(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    return p0
.end method
