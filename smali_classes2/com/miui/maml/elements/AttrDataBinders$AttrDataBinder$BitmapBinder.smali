.class Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;
.super Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;)V
    .locals 1

    .line 89
    iput-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;->this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/miui/maml/elements/ScreenElement;)V
    .locals 1

    .line 92
    check-cast p1, Lcom/miui/maml/elements/ImageScreenElement;

    iget-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;->this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v0, v0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mVars:Lcom/miui/maml/data/ContextVariables;

    iget-object p0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;->this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object p0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/miui/maml/data/ContextVariables;->getBmp(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
