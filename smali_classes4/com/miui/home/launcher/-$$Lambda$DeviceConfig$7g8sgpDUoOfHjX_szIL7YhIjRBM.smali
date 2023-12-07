.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7g8sgpDUoOfHjX_szIL7YhIjRBM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7g8sgpDUoOfHjX_szIL7YhIjRBM;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$DeviceConfig$7g8sgpDUoOfHjX_szIL7YhIjRBM;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/DeviceConfig;->lambda$checkIsAccessibilityEnabledAsync$5(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
