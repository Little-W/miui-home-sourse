.class Lcom/miui/home/launcher/view/HomeFeedContainer$1;
.super Ljava/lang/Object;
.source "HomeFeedContainer.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/view/HomeFeedContainer;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/view/HomeFeedContainer;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .line 175
    iget-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->access$000(Lcom/miui/home/launcher/view/HomeFeedContainer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->access$100(Lcom/miui/home/launcher/view/HomeFeedContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->access$200(Lcom/miui/home/launcher/view/HomeFeedContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    const-string v2, "key_anim_last_show_time"

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->access$300(Lcom/miui/home/launcher/view/HomeFeedContainer;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 179
    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    const-string v2, "key_last_record_expose_time"

    .line 180
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->access$300(Lcom/miui/home/launcher/view/HomeFeedContainer;)J

    move-result-wide v2

    .line 179
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 181
    iget-object v1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$1;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    const-string v2, "key_back_home_times"

    .line 182
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/view/HomeFeedContainer;->formatKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 181
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 171
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/HomeFeedContainer$1;->apply(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
