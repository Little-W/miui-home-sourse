.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$m5vW58NwLl0BYKuf5YGY-1D6ks4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/FolderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$m5vW58NwLl0BYKuf5YGY-1D6ks4;->f$0:Lcom/miui/home/launcher/FolderInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$m5vW58NwLl0BYKuf5YGY-1D6ks4;->f$0:Lcom/miui/home/launcher/FolderInfo;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/ApplicationsMessage;->lambda$updateFolderMessage$0(Lcom/miui/home/launcher/FolderInfo;Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
