.class Lcom/miui/home/launcher/CellLayout$7;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/CellLayout;->fillEmptyCellAuto(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 2020
    iput-object p1, p0, Lcom/miui/home/launcher/CellLayout$7;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2022
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$7;->this$0:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->requestLayout()V

    const-string v0, "Launcher.CellLayout"

    const-string v1, "requestLayout after has recalculated item position"

    .line 2023
    .line 2024
    iget-object v0, p0, Lcom/miui/home/launcher/CellLayout$7;->this$0:Lcom/miui/home/launcher/CellLayout;

    iget-object v0, v0, Lcom/miui/home/launcher/CellLayout;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->invalidateWorkspacePreview()V

    return-void
.end method
