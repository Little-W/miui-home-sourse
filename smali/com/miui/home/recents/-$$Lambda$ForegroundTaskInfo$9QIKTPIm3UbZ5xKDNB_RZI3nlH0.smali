.class public final synthetic Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$9QIKTPIm3UbZ5xKDNB_RZI3nlH0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$9QIKTPIm3UbZ5xKDNB_RZI3nlH0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$9QIKTPIm3UbZ5xKDNB_RZI3nlH0;

    invoke-direct {v0}, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$9QIKTPIm3UbZ5xKDNB_RZI3nlH0;-><init>()V

    sput-object v0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$9QIKTPIm3UbZ5xKDNB_RZI3nlH0;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$9QIKTPIm3UbZ5xKDNB_RZI3nlH0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    check-cast p2, Lcom/miui/home/recents/views/TaskView;

    invoke-static {p1, p2}, Lcom/miui/home/recents/ForegroundTaskInfo;->lambda$startForegroundSmallWindows$2(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskView;)I

    move-result p1

    return p1
.end method
