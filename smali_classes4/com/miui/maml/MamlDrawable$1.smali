.class Lcom/miui/maml/MamlDrawable$1;
.super Ljava/lang/Object;
.source "MamlDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/MamlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/MamlDrawable;


# direct methods
.method constructor <init>(Lcom/miui/maml/MamlDrawable;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/miui/maml/MamlDrawable$1;->this$0:Lcom/miui/maml/MamlDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/miui/maml/MamlDrawable$1;->this$0:Lcom/miui/maml/MamlDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/MamlDrawable;->invalidateSelf()V

    return-void
.end method
