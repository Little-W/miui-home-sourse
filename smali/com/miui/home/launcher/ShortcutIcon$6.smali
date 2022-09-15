.class Lcom/miui/home/launcher/ShortcutIcon$6;
.super Ljava/lang/Object;
.source "ShortcutIcon.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ShortcutIcon;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$6;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon$6;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/ShortcutIcon;->access$200(Lcom/miui/home/launcher/ShortcutIcon;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/ShortcutIcon$6;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v0, p2, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->onShortCutIconChecked(ZLcom/miui/home/launcher/ShortcutInfo;)V

    .line 359
    iget-object p2, p0, Lcom/miui/home/launcher/ShortcutIcon$6;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {p2}, Lcom/miui/home/launcher/ShortcutIcon;->access$300(Lcom/miui/home/launcher/ShortcutIcon;)V

    .line 360
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performMeshNormal(Landroid/view/View;)V

    :cond_0
    return-void
.end method
