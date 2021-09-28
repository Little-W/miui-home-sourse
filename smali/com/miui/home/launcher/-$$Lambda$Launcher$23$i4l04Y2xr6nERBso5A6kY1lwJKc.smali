.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$23$i4l04Y2xr6nERBso5A6kY1lwJKc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher$23;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher$23;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$23$i4l04Y2xr6nERBso5A6kY1lwJKc;->f$0:Lcom/miui/home/launcher/Launcher$23;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$23$i4l04Y2xr6nERBso5A6kY1lwJKc;->f$0:Lcom/miui/home/launcher/Launcher$23;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher$23;->lambda$onChange$0(Lcom/miui/home/launcher/Launcher$23;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
