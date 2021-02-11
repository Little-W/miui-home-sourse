.class public Lcom/miui/launcher/views/MamlOnExternCommandListener;
.super Ljava/lang/Object;
.source "MamlOnExternCommandListener.java"


# instance fields
.field private mListenerDelegate:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/miui/launcher/views/MamlOnExternCommandListener$1;

    invoke-direct {v0, p0}, Lcom/miui/launcher/views/MamlOnExternCommandListener$1;-><init>(Lcom/miui/launcher/views/MamlOnExternCommandListener;)V

    iput-object v0, p0, Lcom/miui/launcher/views/MamlOnExternCommandListener;->mListenerDelegate:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    return-void
.end method


# virtual methods
.method public getListenerDelegate()Lmiui/maml/ScreenElementRoot$OnExternCommandListener;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/miui/launcher/views/MamlOnExternCommandListener;->mListenerDelegate:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    return-object v0
.end method

.method public onMamlCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
