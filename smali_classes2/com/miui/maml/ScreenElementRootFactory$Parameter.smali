.class public Lcom/miui/maml/ScreenElementRootFactory$Parameter;
.super Ljava/lang/Object;
.source "ScreenElementRootFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ScreenElementRootFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPath:Ljava/lang/String;

.field private mResourceLoader:Lcom/miui/maml/ResourceLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    .line 28
    :cond_0
    iput-object p2, p0, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    .line 21
    :cond_0
    iput-object p2, p0, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->mPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Landroid/content/Context;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Lcom/miui/maml/ResourceLoader;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->mResourceLoader:Lcom/miui/maml/ResourceLoader;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/maml/ScreenElementRootFactory$Parameter;)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRootFactory$Parameter;->mPath:Ljava/lang/String;

    return-object p0
.end method
