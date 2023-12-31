.class public final synthetic Lcom/miui/privacy/-$$Lambda$PrivacyManager$1$LxF-ERxLpzRf0kLzcBZ2HbolyJ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/privacy/-$$Lambda$PrivacyManager$1$LxF-ERxLpzRf0kLzcBZ2HbolyJ4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/privacy/-$$Lambda$PrivacyManager$1$LxF-ERxLpzRf0kLzcBZ2HbolyJ4;

    invoke-direct {v0}, Lcom/miui/privacy/-$$Lambda$PrivacyManager$1$LxF-ERxLpzRf0kLzcBZ2HbolyJ4;-><init>()V

    sput-object v0, Lcom/miui/privacy/-$$Lambda$PrivacyManager$1$LxF-ERxLpzRf0kLzcBZ2HbolyJ4;->INSTANCE:Lcom/miui/privacy/-$$Lambda$PrivacyManager$1$LxF-ERxLpzRf0kLzcBZ2HbolyJ4;

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

    check-cast p1, Lcom/miui/privacy/bean/Result;

    invoke-static {p1}, Lcom/miui/privacy/PrivacyManager$1;->lambda$onSucceed$0(Lcom/miui/privacy/bean/Result;)V

    return-void
.end method
