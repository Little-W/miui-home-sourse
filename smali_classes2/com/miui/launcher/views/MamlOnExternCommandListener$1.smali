.class Lcom/miui/launcher/views/MamlOnExternCommandListener$1;
.super Ljava/lang/Object;
.source "MamlOnExternCommandListener.java"

# interfaces
.implements Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/launcher/views/MamlOnExternCommandListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/launcher/views/MamlOnExternCommandListener;


# direct methods
.method constructor <init>(Lcom/miui/launcher/views/MamlOnExternCommandListener;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/miui/launcher/views/MamlOnExternCommandListener$1;->this$0:Lcom/miui/launcher/views/MamlOnExternCommandListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/miui/launcher/views/MamlOnExternCommandListener$1;->this$0:Lcom/miui/launcher/views/MamlOnExternCommandListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/launcher/views/MamlOnExternCommandListener;->onMamlCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    return-void
.end method
