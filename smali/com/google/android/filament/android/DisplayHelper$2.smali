.class Lcom/google/android/filament/android/DisplayHelper$2;
.super Ljava/lang/Object;
.source "DisplayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/filament/android/DisplayHelper;->attach(Lcom/google/android/filament/Renderer;Landroid/view/Display;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/filament/android/DisplayHelper;


# direct methods
.method constructor <init>(Lcom/google/android/filament/android/DisplayHelper;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/google/android/filament/android/DisplayHelper$2;->this$0:Lcom/google/android/filament/android/DisplayHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/google/android/filament/android/DisplayHelper$2;->this$0:Lcom/google/android/filament/android/DisplayHelper;

    invoke-static {p0}, Lcom/google/android/filament/android/DisplayHelper;->access$000(Lcom/google/android/filament/android/DisplayHelper;)V

    return-void
.end method
