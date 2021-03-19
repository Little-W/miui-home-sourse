.class public abstract Lcom/miui/maml/elements/filament/PbrModel;
.super Ljava/lang/Object;
.source "PbrModel.java"


# instance fields
.field protected mEngine:Lcom/google/android/filament/Engine;

.field protected mResMgr:Lcom/miui/maml/ResourceManager;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lcom/miui/maml/elements/filament/PbrModel;->mResMgr:Lcom/miui/maml/ResourceManager;

    return-void
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public abstract init(Landroid/view/View;)V
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public abstract render(J)V
.end method

.method public resume()V
    .locals 0

    return-void
.end method
