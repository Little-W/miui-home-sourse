.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$L6UFcETnHdvtHPeaO-0rF05qkUg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$L6UFcETnHdvtHPeaO-0rF05qkUg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$L6UFcETnHdvtHPeaO-0rF05qkUg;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$L6UFcETnHdvtHPeaO-0rF05qkUg;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$L6UFcETnHdvtHPeaO-0rF05qkUg;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsListRecentsAppProvider$L6UFcETnHdvtHPeaO-0rF05qkUg;

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

    invoke-static {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->lambda$evaluateRecentsRecommendTasks$4(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p1

    return p1
.end method
