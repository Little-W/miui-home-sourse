.class public final synthetic Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$wTwIZH05P4rFNs0sskP39zicrCs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$wTwIZH05P4rFNs0sskP39zicrCs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$wTwIZH05P4rFNs0sskP39zicrCs;

    invoke-direct {v0}, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$wTwIZH05P4rFNs0sskP39zicrCs;-><init>()V

    sput-object v0, Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$wTwIZH05P4rFNs0sskP39zicrCs;->INSTANCE:Lcom/miui/home/settings/-$$Lambda$MiuiHomeSettings$wTwIZH05P4rFNs0sskP39zicrCs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-static {p1}, Lcom/miui/home/settings/MiuiHomeSettings;->lambda$updateRecentsShowRecommend$9(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
