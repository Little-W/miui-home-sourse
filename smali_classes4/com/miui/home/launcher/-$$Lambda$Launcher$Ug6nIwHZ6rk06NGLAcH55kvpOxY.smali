.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$Ug6nIwHZ6rk06NGLAcH55kvpOxY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$Ug6nIwHZ6rk06NGLAcH55kvpOxY;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$Ug6nIwHZ6rk06NGLAcH55kvpOxY;->f$0:Ljava/util/function/Consumer;

    check-cast p1, Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$doAllEventBusHandlers$76(Ljava/util/function/Consumer;Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;)V

    return-void
.end method
