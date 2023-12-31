.class public final synthetic Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$N6Hu_oaf65EPzA1XbOA93b2DFaE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$N6Hu_oaf65EPzA1XbOA93b2DFaE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$N6Hu_oaf65EPzA1XbOA93b2DFaE;

    invoke-direct {v0}, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$N6Hu_oaf65EPzA1XbOA93b2DFaE;-><init>()V

    sput-object v0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$N6Hu_oaf65EPzA1XbOA93b2DFaE;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$N6Hu_oaf65EPzA1XbOA93b2DFaE;

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

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    invoke-static {p1}, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->lambda$startForegroundSmallWindows$2(Lcom/miui/home/recents/views/TaskView;)Z

    move-result p0

    return p0
.end method
