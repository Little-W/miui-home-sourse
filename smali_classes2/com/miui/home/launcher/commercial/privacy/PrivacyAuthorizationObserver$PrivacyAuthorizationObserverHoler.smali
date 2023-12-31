.class Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$PrivacyAuthorizationObserverHoler;
.super Ljava/lang/Object;
.source "PrivacyAuthorizationObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrivacyAuthorizationObserverHoler"
.end annotation


# static fields
.field private static INSTANCE:Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;-><init>(Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$1;)V

    sput-object v0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$PrivacyAuthorizationObserverHoler;->INSTANCE:Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;
    .locals 1

    .line 23
    sget-object v0, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver$PrivacyAuthorizationObserverHoler;->INSTANCE:Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    return-object v0
.end method
