.class Lcom/miui/maml/util/MamlMediaDataSource$1;
.super Ljava/lang/Object;
.source "MamlMediaDataSource.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/MamlMediaDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/util/MamlMediaDataSource;


# direct methods
.method constructor <init>(Lcom/miui/maml/util/MamlMediaDataSource;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource$1;->this$0:Lcom/miui/maml/util/MamlMediaDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlMediaDataSource$1;->onLowMemory()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/util/MamlMediaDataSource$1;->onTrimMemory(I)V

    return-void
.end method
