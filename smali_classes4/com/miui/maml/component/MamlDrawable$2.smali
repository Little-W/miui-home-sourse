.class Lcom/miui/maml/component/MamlDrawable$2;
.super Ljava/lang/Object;
.source "MamlDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/component/MamlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/component/MamlDrawable;


# direct methods
.method constructor <init>(Lcom/miui/maml/component/MamlDrawable;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/miui/maml/component/MamlDrawable$2;->this$0:Lcom/miui/maml/component/MamlDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miui/maml/component/MamlDrawable$2;->this$0:Lcom/miui/maml/component/MamlDrawable;

    invoke-virtual {p0}, Lcom/miui/maml/component/MamlDrawable;->invalidateSelf()V

    return-void
.end method
