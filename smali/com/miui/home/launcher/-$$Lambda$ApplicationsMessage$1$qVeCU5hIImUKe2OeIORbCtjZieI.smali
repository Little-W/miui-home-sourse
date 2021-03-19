.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$1$qVeCU5hIImUKe2OeIORbCtjZieI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ApplicationsMessage$1;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ApplicationsMessage$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$1$qVeCU5hIImUKe2OeIORbCtjZieI;->f$0:Lcom/miui/home/launcher/ApplicationsMessage$1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$1$qVeCU5hIImUKe2OeIORbCtjZieI;->f$0:Lcom/miui/home/launcher/ApplicationsMessage$1;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/ApplicationsMessage$1;->lambda$onChange$1(Lcom/miui/home/launcher/ApplicationsMessage$1;Ljava/lang/String;)V

    return-void
.end method
