.class public final synthetic Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsScreenViewContent$OkgSUl4k6RmFPjxfYPl1mGSZyNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsScreenViewContent$OkgSUl4k6RmFPjxfYPl1mGSZyNY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsScreenViewContent$OkgSUl4k6RmFPjxfYPl1mGSZyNY;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsScreenViewContent$OkgSUl4k6RmFPjxfYPl1mGSZyNY;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsScreenViewContent$OkgSUl4k6RmFPjxfYPl1mGSZyNY;->INSTANCE:Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsScreenViewContent$OkgSUl4k6RmFPjxfYPl1mGSZyNY;

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

    check-cast p1, Lcom/miui/home/launcher/ItemInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsScreenViewContent;->lambda$keepDataConsistent$1(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method
