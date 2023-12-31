.class final Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback$deliverTouchEvent$$inlined$run$lambda$1;
.super Ljava/lang/Object;
.source "AssistantPickerCallback.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;->deliverTouchEvent(Lcom/miui/home/launcher/Launcher;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $event$inlined:Landroid/view/MotionEvent;

.field final synthetic $this_run:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback$deliverTouchEvent$$inlined$run$lambda$1;->$this_run:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback$deliverTouchEvent$$inlined$run$lambda$1;->$event$inlined:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 33
    sget-object v0, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;->INSTANCE:Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;->access$changeContinueAddState(Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback;Z)V

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback$deliverTouchEvent$$inlined$run$lambda$1;->$this_run:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantPickerCallback$deliverTouchEvent$$inlined$run$lambda$1;->$event$inlined:Landroid/view/MotionEvent;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
