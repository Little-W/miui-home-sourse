.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$RmdkA0vhwKlIea2Mp2uHj_lFuXU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$RmdkA0vhwKlIea2Mp2uHj_lFuXU;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$RmdkA0vhwKlIea2Mp2uHj_lFuXU;->f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$RmdkA0vhwKlIea2Mp2uHj_lFuXU;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$RmdkA0vhwKlIea2Mp2uHj_lFuXU;->f$1:Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->lambda$restoreMaMl$45(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    return-void
.end method
