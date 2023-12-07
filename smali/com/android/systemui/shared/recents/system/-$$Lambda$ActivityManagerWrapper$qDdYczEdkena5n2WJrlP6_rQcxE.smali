.class public final synthetic Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$qDdYczEdkena5n2WJrlP6_rQcxE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$qDdYczEdkena5n2WJrlP6_rQcxE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$qDdYczEdkena5n2WJrlP6_rQcxE;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$qDdYczEdkena5n2WJrlP6_rQcxE;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$qDdYczEdkena5n2WJrlP6_rQcxE;->INSTANCE:Lcom/android/systemui/shared/recents/system/-$$Lambda$ActivityManagerWrapper$qDdYczEdkena5n2WJrlP6_rQcxE;

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

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->lambda$onStartingSplitLegacy$3(I)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method
