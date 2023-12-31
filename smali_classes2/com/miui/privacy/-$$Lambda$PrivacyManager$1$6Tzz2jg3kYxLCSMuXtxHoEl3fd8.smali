.class public final synthetic Lcom/miui/privacy/-$$Lambda$PrivacyManager$1$6Tzz2jg3kYxLCSMuXtxHoEl3fd8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/privacy/-$$Lambda$PrivacyManager$1$6Tzz2jg3kYxLCSMuXtxHoEl3fd8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/privacy/-$$Lambda$PrivacyManager$1$6Tzz2jg3kYxLCSMuXtxHoEl3fd8;

    invoke-direct {v0}, Lcom/miui/privacy/-$$Lambda$PrivacyManager$1$6Tzz2jg3kYxLCSMuXtxHoEl3fd8;-><init>()V

    sput-object v0, Lcom/miui/privacy/-$$Lambda$PrivacyManager$1$6Tzz2jg3kYxLCSMuXtxHoEl3fd8;->INSTANCE:Lcom/miui/privacy/-$$Lambda$PrivacyManager$1$6Tzz2jg3kYxLCSMuXtxHoEl3fd8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/miui/privacy/PrivacyManager$1;->lambda$onSucceed$1(Ljava/lang/Throwable;)V

    return-void
.end method
