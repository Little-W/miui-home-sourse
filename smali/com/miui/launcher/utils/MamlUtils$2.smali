.class final Lcom/miui/launcher/utils/MamlUtils$2;
.super Ljava/lang/Object;
.source "MamlUtils.java"

# interfaces
.implements Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/launcher/utils/MamlUtils;->addListenerOnElement(Ljava/lang/Object;Ljava/lang/String;Lcom/miui/launcher/views/MamlButtonActionListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/miui/launcher/views/MamlButtonActionListener;


# direct methods
.method constructor <init>(Lcom/miui/launcher/views/MamlButtonActionListener;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/miui/launcher/utils/MamlUtils$2;->val$listener:Lcom/miui/launcher/views/MamlButtonActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/miui/launcher/utils/MamlUtils$2;->val$listener:Lcom/miui/launcher/views/MamlButtonActionListener;

    invoke-interface {v0, p1}, Lcom/miui/launcher/views/MamlButtonActionListener;->onButtonDoubleClick(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/miui/launcher/utils/MamlUtils$2;->val$listener:Lcom/miui/launcher/views/MamlButtonActionListener;

    invoke-interface {v0, p1}, Lcom/miui/launcher/views/MamlButtonActionListener;->onButtonDown(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/miui/launcher/utils/MamlUtils$2;->val$listener:Lcom/miui/launcher/views/MamlButtonActionListener;

    invoke-interface {v0, p1}, Lcom/miui/launcher/views/MamlButtonActionListener;->onButtonLongClick(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/miui/launcher/utils/MamlUtils$2;->val$listener:Lcom/miui/launcher/views/MamlButtonActionListener;

    invoke-interface {v0, p1}, Lcom/miui/launcher/views/MamlButtonActionListener;->onButtonUp(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
