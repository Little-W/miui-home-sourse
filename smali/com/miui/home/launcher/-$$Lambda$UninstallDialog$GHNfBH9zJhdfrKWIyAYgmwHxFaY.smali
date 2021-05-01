.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$UninstallDialog$GHNfBH9zJhdfrKWIyAYgmwHxFaY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$UninstallDialog$GHNfBH9zJhdfrKWIyAYgmwHxFaY;->f$0:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$UninstallDialog$GHNfBH9zJhdfrKWIyAYgmwHxFaY;->f$0:Lcom/miui/home/launcher/ItemInfo;

    invoke-static {v0}, Lcom/miui/home/launcher/UninstallDialog;->lambda$removeItem$293(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method
