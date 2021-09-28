.class public final synthetic Lcom/miui/home/launcher/commercial/privacy/-$$Lambda$PrivacyAuthorizationObserver$wPB9KLgUMD6evT_a4xal-3N2RDY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/privacy/-$$Lambda$PrivacyAuthorizationObserver$wPB9KLgUMD6evT_a4xal-3N2RDY;->f$0:Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/privacy/-$$Lambda$PrivacyAuthorizationObserver$wPB9KLgUMD6evT_a4xal-3N2RDY;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/privacy/-$$Lambda$PrivacyAuthorizationObserver$wPB9KLgUMD6evT_a4xal-3N2RDY;->f$0:Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/privacy/-$$Lambda$PrivacyAuthorizationObserver$wPB9KLgUMD6evT_a4xal-3N2RDY;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;->lambda$register$0(Lcom/miui/home/launcher/commercial/privacy/PrivacyAuthorizationObserver;Landroid/content/Context;)V

    return-void
.end method
