.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$6WjBAWuz5pS0Mii6XUxuICElkeQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$6WjBAWuz5pS0Mii6XUxuICElkeQ;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$6WjBAWuz5pS0Mii6XUxuICElkeQ;->f$0:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    check-cast p1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$removeMaMl$16(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)Z

    move-result p1

    return p1
.end method
