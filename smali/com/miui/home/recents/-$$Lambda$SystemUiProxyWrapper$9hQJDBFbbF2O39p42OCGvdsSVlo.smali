.class public final synthetic Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$9hQJDBFbbF2O39p42OCGvdsSVlo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$9hQJDBFbbF2O39p42OCGvdsSVlo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$9hQJDBFbbF2O39p42OCGvdsSVlo;

    invoke-direct {v0}, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$9hQJDBFbbF2O39p42OCGvdsSVlo;-><init>()V

    sput-object v0, Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$9hQJDBFbbF2O39p42OCGvdsSVlo;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$SystemUiProxyWrapper$9hQJDBFbbF2O39p42OCGvdsSVlo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/miui/home/recents/SystemUiProxyWrapper;->lambda$static$2(Landroid/os/Bundle;)Lcom/miui/home/recents/SystemUiProxyWrapper;

    move-result-object p1

    return-object p1
.end method
