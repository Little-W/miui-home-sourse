.class final Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1$1;
.super Ljava/lang/Object;
.source "widgetEditSave.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $config:Lcom/miui/maml/widget/edit/OneConfig;

.field final synthetic this$0:Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;


# direct methods
.method constructor <init>(Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;Lcom/miui/maml/widget/edit/OneConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1$1;->this$0:Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;

    iput-object p2, p0, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1$1;->$config:Lcom/miui/maml/widget/edit/OneConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1$1;->$config:Lcom/miui/maml/widget/edit/OneConfig;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1$1;->this$0:Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;

    iget-object v1, v1, Lcom/miui/maml/widget/edit/WidgetEditSave__WidgetEditSaveKt$restoreFromConfigPath$runnable$1;->$this_restoreFromConfigPath:Lcom/miui/maml/component/MamlView;

    invoke-static {v0, v1}, Lcom/miui/maml/widget/edit/WidgetEditSave;->restoreMamlView(Lcom/miui/maml/widget/edit/OneConfig;Lcom/miui/maml/component/MamlView;)V

    :cond_0
    return-void
.end method
