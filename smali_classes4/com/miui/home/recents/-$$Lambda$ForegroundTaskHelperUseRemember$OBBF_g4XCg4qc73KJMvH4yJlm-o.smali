.class public final synthetic Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$OBBF_g4XCg4qc73KJMvH4yJlm-o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$OBBF_g4XCg4qc73KJMvH4yJlm-o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$OBBF_g4XCg4qc73KJMvH4yJlm-o;

    invoke-direct {v0}, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$OBBF_g4XCg4qc73KJMvH4yJlm-o;-><init>()V

    sput-object v0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$OBBF_g4XCg4qc73KJMvH4yJlm-o;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$OBBF_g4XCg4qc73KJMvH4yJlm-o;

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

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p1}, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->lambda$OBBF_g4XCg4qc73KJMvH4yJlm-o(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
