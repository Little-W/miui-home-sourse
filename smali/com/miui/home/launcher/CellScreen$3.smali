.class Lcom/miui/home/launcher/CellScreen$3;
.super Ljava/lang/Object;
.source "CellScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/CellScreen;->onScreenOrientationChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellScreen;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellScreen;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/miui/home/launcher/CellScreen$3;->this$0:Lcom/miui/home/launcher/CellScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen$3;->this$0:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellScreen;->updateLayout()V

    return-void
.end method
