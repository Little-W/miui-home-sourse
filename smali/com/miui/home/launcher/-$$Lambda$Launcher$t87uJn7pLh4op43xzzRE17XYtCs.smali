.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$t87uJn7pLh4op43xzzRE17XYtCs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava8/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava8/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$t87uJn7pLh4op43xzzRE17XYtCs;->f$0:Ljava8/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$t87uJn7pLh4op43xzzRE17XYtCs;->f$0:Ljava8/util/function/Consumer;

    check-cast p1, Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$doAllEventBusHandlers$56(Ljava8/util/function/Consumer;Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;)V

    return-void
.end method
